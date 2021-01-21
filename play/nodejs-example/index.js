rr = require('@rillrate/rillrate');

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function main() {
    rr.install();
    await sleep(10000);
}

main();
