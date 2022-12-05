// localhost:8888/countdown

import Countdown from "../islands/Countdown.tsx";

const Page = () => {
  const date = new Date();

  // Add 1h for countdown
  date.setHours(date.getHours() + 1);

  return (
    <p>
      The big event is happening... <Countdown target={date.toISOString()} />
    </p>
  );
};

export default Page;
