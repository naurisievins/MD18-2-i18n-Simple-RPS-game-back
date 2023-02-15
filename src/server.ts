import express from "express";
import { Request, Response } from "express";
import bodyparser from "body-parser";
import cors from "cors";
import pool from "./pool";
import { validateNumber, validateWinner, validateWeapon } from "./validate";

const app = express();

app.use(bodyparser.json());
app.use(cors({ origin: "*" }));

// Get single scores

app.get("/single_score", (req: Request, res: Response) => {
  const sql = "SELECT * FROM single_score ORDER BY id DESC LIMIT 100";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

// Post single score

app.post("/single_score", (req: Request, res: Response) => {
  let winner = req.body.win;
  winner = validateWinner(winner);

  let computerWeapon = req.body.computerWep;
  computerWeapon = validateWeapon(computerWeapon);

  let playerWeapon = req.body.playerWep;
  playerWeapon = validateWeapon(playerWeapon);

  pool.query(
    "INSERT INTO single_score (winner, computer_weapon, player_weapon) VALUES (?, ?, ?)",
    [winner, computerWeapon, playerWeapon],
    (error) => {
      if (error) throw error;
      res.sendStatus(200);
    }
  );
});

// Get session scores

app.get("/session_score", (req: Request, res: Response) => {
  const sql = "SELECT * FROM session_score ORDER BY id DESC LIMIT 100";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

// Post / Update session score

app.post("/session_score", (req: Request, res: Response) => {
  let player = req.body.results.player;
  player = validateNumber(player);

  let computer = req.body.results.computer;
  computer = validateNumber(computer);

  let games = req.body.results.games;
  games = validateNumber(games);

  const update = req.body.update;

  if (!update) {
    pool.query(
      "INSERT INTO session_score (player_score, computer_score, games) VALUES (?, ?, ?)",
      [player, computer, games],
      (error) => {
        if (error) throw error;
        res.sendStatus(200);
      }
    );
  } else {
    pool.query(
      "UPDATE session_score SET player_score = ?, computer_score = ?, games = ? WHERE id = (SELECT id FROM (SELECT id FROM session_score ORDER BY id DESC LIMIT 1) AS temp)",
      [player, computer, games],
      (error) => {
        if (error) throw error;
        res.sendStatus(200);
      }
    );
  }
});

app.listen(3004, () => {
  console.log("Application started on port 3004!");
});
