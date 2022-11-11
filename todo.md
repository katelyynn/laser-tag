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

- [ ] Track player general statistics
  - [ ] Kills
  - [ ] Wins
  - [ ] Deaths

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
- [ ] Display current map and mode on actionbar when no item is held
  - Currently displaying the same static `Score: 0`

- [ ] Add user-specific options
  - [ ] Disable some sound effects

### Game status updates
- [ ] Flesh out game status updates in chat
  - [ ] Replace icons with more descriptive ones (rather than everything being `[!]`)
  - Take inspiration from MCC Island
- [ ] Use titles/subtitles for some game status updates
  - aka. for kills on the subtitle layer