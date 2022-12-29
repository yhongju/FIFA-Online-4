import { createContext } from "preact";
import { StateUpdater, useState } from "preact/hooks";

import StartButton from "../islands/StartButton.tsx";
import Position from "../components/Position.tsx";
// TODO:
// import Payward from "../component/Payward.tsx";
// import TeamColor from "../component/TeamColor.tsx";
// import BP from "../component/BP.tsx";

const StartContext = createContext({
  started: false,
  setStarted: StateUpdater(false),
});

const Index = () => {
  const [started, setStarted] = useState(true);

  return (
    <div class="bg-black w-screen h-screen">
      <video
        autoPlay={true}
        loop={true}
        class="w-full h-full bg-black inline-block"
        muted={true}
        type="video/webm"
        style={{ filter: "blur(5px)" }}
      >
        <source src={"index.webm"} />
      </video>
      {started
        ? (
          // <div class="bg-rose-800 w-24 h-24 flex">
          //   <Position />
          //   {
          //     /* <Payward />
          //   <TeamColor />
          //   <BP /> */
          //   }
          // </div>
        )
        : (
          <StartContext.Provider value={{ started, setStarted }}>
            <StartButton />
          </StartContext.Provider>
        )}
    </div>
  );
};

export default Index;
export { StartContext };
