export const validateNumber = (num: number) => {
  if (!isNaN(num)) {
    return num;
  }
};

export const validateWinner = (winner: string) => {
  if (winner === "computer" || winner === "player") {
    return winner;
  }
};

export const validateWeapon = (weapon: string) => {
  if (weapon === "rock" || weapon === "paper" || weapon === "scissors") {
    return weapon;
  }
};
