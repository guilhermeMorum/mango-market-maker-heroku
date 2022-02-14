FROM opinionatedgeek/mango-explorer-v3:latest

COPY $MM_SK /app/id.json

ENTRYPOINT [
  "marketmaker"
]

CMD [
  "--name 'MNGO-PERP Marketmaker'",
  "--market MNGO-PERP",
  "--oracle-provider ftx",
  "--ratios-position-size 0.1",
  "--confidenceinterval-level 2",
  "--confidenceinterval-level 4",
  "--confidenceinterval-position-size-ratio 0.1",
  "--existing-order-tolerance 0.015",
  "--pulse-interval 30",
  "--order-type POST_ONLY",
  "--log-level DEBUG"
]
