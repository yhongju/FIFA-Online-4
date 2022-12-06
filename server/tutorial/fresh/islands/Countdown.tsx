import { useEffect, useState } from "preact/hooks";

const timeFmt = new Intl.RelativeTimeFormat("en-US");

const Countdown = (props: { target: string }) => {
  const target = new Date(props.target);
  const [now, setNow] = useState(new Date());

  useEffect(() => {
    // Trigger the effect
    const timer = setInterval(() => {
      setNow((now) => {
        if (now > target) {
          clearInterval(timer);
        }

        return new Date();
      });
    }, 1000);

    // Cleanup code, optional
    return () => clearInterval(timer);
  }, [props.target]);

  if (now > target) {
    return <span>🎉</span>;
  }

  const secondLeft = Math.floor((target.getTime() - now.getTime()) / 1000); // 3600

  return <span>{timeFmt.format(secondLeft, "seconds")}</span>;
};

export default Countdown;
