import { useState } from "preact/hooks";

const Counter02 = () => {
  const [count, setCount] = useState(0);

  return (
    <div>
      Counter is at {count}.{" "}
      <button onClick={() => setCount(count + 1)}>Up!</button>
    </div>
  );
};

export default Counter02;
