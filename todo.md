# todo

### General game flow
- [ ] Implement game period
  - [x] **-1**: Pre-game, lobby
  - [x] **0**: Countdown
  - [x] **1**: Game in-progress
  - [ ] **2**: Game pause/countdown
  - [x] **3**: Game over, victory screen

- [ ] Implement game clock
  - Integrate with ***p!f***

- [x] Implement score
  - [x] Create scoreboard
  - [x] Increment upon kill
  - [x] Decrease upon death?
  - [x] Win at amount of points
  - [x] Reset on game end

- [x] Track player general statistics
  - [x] Kills `leaderboard.kills`
  - [x] Wins `leaderboard.wins`
  - [x] Deaths `leaderboard.deaths`
  - [x] Score `leaderboard.score`
- [x] Allow player to view their statistics
  - [x] Profile menu (`/trigger profile`)
  - [x] Shown on lobby actionbar

#### Gameplay
- [x] Implement killstreak system
  - [x] Cool names?
  - [ ] Make the names cooler

- [x] Track player name kills (who killed who)
  - [x] Display on subtitle

- [ ] Add particles on kill
  - Similar to MCC Island, makes kills a lot more satisfying

- [ ] Add more gameplay modes
  - [x] Solos
  - [ ] Teams (not fully complete)
  - [ ] CTH-style (1 person has the "thing" which allows them to gain points (but they get glowing and slowness(?), goal is to get the most points with the "thing"))

#### Cosmetic systems
- [ ] Add a 'Coins' system
  - Earned from playing games, getting kills, winning rounds etc.
  - [ ] Earn from passively playing games
  - [ ] Earn from getting kills
  - [ ] Earn from winning rounds
  - [ ] Show when near a shop?

- [ ] Implement shop/market
  - Allows you to spend 'Coins' on cosmetics


### Weapon systems
- [x] Implement Crossbow
- [x] Implement Machine Crossbow

- [x] Implement re-charging
- [x] Implement reloading
- [ ] Implement overheating for Machine Crossbow?

### Game setup
- [ ] Create setup-flow, either physically or via /trigger
- [ ] Swap out slow buttons with a faster, more intiutive replacement
  - They are very annoying to use right now
- [ ] ~~Display current map and mode on actionbar when no item is held~~
  - Replaced by player statistics
  - Currently displaying the same static `Score: 0`

- [ ] Add user-specific options
  - [ ] Disable some sound effects

### Game status updates
- [ ] Flesh out game status updates in chat
  - [ ] Replace icons with more descriptive ones (rather than everything being `[!]`)
  - Take inspiration from MCC Island
  - Also use cooler custom colours
- [ ] Use titles/subtitles for some game status updates
  - aka. for kills on the subtitle layer