import { createContext } from "preact";
import { StateUpdater, useState } from "preact/hooks";
import StartButton from "../islands/StartButton.tsx";

const StartContext = createContext();

const Index = () => {
  const [started, setStarted] = useState(false);

  return (
    <div class="bg-black w-screen h-screen">
      <video
        autoPlay={true}
        loop={true}
        class="w-full h-full bg-black"
        muted={true}
        type="video/webm"
        style={{ filter: "blur(5px)" }}
      >
        <source src={"index.webm"} />
      </video>
      {started
        ? <div>hello</div>
        : (
          <StartContext.Provider value={[started, setStarted]}>
            <StartButton />
          </StartContext.Provider>
        )}
    </div>
  );
};

export default Index;
export { StartContext };
