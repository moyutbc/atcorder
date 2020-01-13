const fetch = require("node-fetch");
const fs = require("fs");
const jsdom = require("jsdom");

const questions = ["a", "b", "c", "d", "e", "f"];

const main = async contest => {
  if (!fs.existsSync(`./${contest}/`)) {
    fs.mkdirSync(`./${contest}/`);
  }

  jobs = questions.map(question => {
    if (!fs.existsSync(`./${contest}/${question}/`)) {
      fs.mkdirSync(`./${contest}/${question}/`);
    }
    if (!fs.existsSync(`./${contest}/${question}/main.rb`)) {
      fs.writeFileSync(`./${contest}/${question}/main.rb`);
    }
    if (!fs.existsSync(`./${contest}/${question}/spec.rb`)) {
      fs.writeFileSync(`./${contest}/${question}/spec.rb`);
    }

    return fetch(
      `https://atcoder.jp/contests/${contest}/tasks/${contest}_${question}`
    )
      .then(resp => resp.text())
      .then(body => {
        dom = new jsdom.JSDOM(body);

        sections = dom.window.document.querySelectorAll(".lang-ja section");
        sections = Array.from(sections);

        sampleInputs = sections
          .filter(elem => elem.textContent.startsWith("\n入力例"))
          .map(elem => elem.querySelector("pre").textContent)
          .forEach((text, index) => {
            fs.writeFileSync(
              `./${contest}/${question}/sample-${index + 1}.in`,
              text
            );
          });

        sampleInputs = sections
          .filter(elem => elem.textContent.startsWith("\n出力例"))
          .map(elem => elem.querySelector("pre").textContent)
          .forEach((text, index) => {
            fs.writeFileSync(
              `./${contest}/${question}/sample-${index + 1}.out`,
              text
            );
          });
      });
  });

  Promise.all(jobs)
    .then(results => {
      console.log(results);
    })
    .catch(reject => {
      console.log(reject);
    });
};

const usage = () => {
  console.log("usage: node gen.js <contest_id(ex. abc150)>");
};

if (process.argv[2]) {
  main(process.argv[2]);
} else {
  usage();
}
