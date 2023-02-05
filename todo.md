# todo

### General game flow
- [ ] Implement game period
  - [x] **-1**: Pre-game, lobby
  - [x] **0**: Countdown
  - [x] **1**: Game in-progress
  - [ ] **2**: Game pause/countdown
  - [x] **3**: Game over, victory screen

- [x] Implement game clock
  - Integrate with ***p!f***
  - Depended on for many future things

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
- [ ] Track more in-depth statistics
  - [ ] Melee kills (knife, punch?)
  - [ ] Ranged kills (crossbows etc.)
  - [ ] Potion/"magic" kills (potions)
- [ ] Track more fun statistics
  - [x] Highest killstreak `leaderboard.killstreak_highest`
  - [ ] Highest total kills `leaderboard.kills_highest`
  - [ ] Highest total deaths `leaderboard.deaths_highest`
  - . . .

### Gameplay
- [x] Implement killstreak system
  - [x] Cool names?
  - [ ] Make the names cooler

- [x] Track player name kills (who killed who)
  - [x] Display on subtitle

- [ ] Add timer before respawn
  - [ ] Become temporary spectator
  - [ ] Return to game after 3s?
  - [ ] Time is configurable

- [ ] Add particles on kill
  - Similar to MCC Island, makes kills a lot more satisfying

- [ ] Add more gameplay types
  - Game mode renamed to Game type
  - [x] Solos
  - [ ] Teams (not fully complete)
  - [ ] CTH-style (1 person has the "thing" which allows them to gain points (but they get glowing and slowness(?), goal is to get the most points with the "thing"))

- [ ] Add more gameplay modes
  - [x] Classic (default gameplay)
  - [ ] OITC (One in the chamber, ranged is a one shot)
  - [ ] Critical Strike (a critical hit is a one shot)

- [ ] Add more win conditions
  - [x] First to x score
  - [ ] First to x kills?
  - [ ] First to x killstreak

### Lobby
- [x] Add end game actions
  - [x] Open profile

- [x] Implement ready/unready system
  - Replaces actionbar statistics
  - [ ] Automatically ready by default

- [ ] Clear items in hotbar and inventory

- [x] Make start button a toggle for "matchmaking"
  - Start after 8s of waiting for players to be ready
  - Cancel if insufficient or chosen by player

### Cosmetic systems
- [x] Add a 'Coins' system
  - Earned from playing games, getting kills, winning rounds etc.
  - [x] Earn from passively playing games `+2`
  - [x] Earn from getting kills `+20`
  - [x] Earn from getting killstreaks `+??` (based on value, cap out)
  - [x] Earn from winning rounds `+50`
  - [x] Add function to poll coin updates in batch
  - [x] Swap out placeholder coin sfx
  - [x] Display in-place of score when out of game

- [ ] Implement shop/market
  - Allows you to spend 'Coins' on cosmetics

### Weapon systems
- [x] Implement Crossbow
- [x] Implement Machine Crossbow

- [x] Implement re-charging
- [x] Implement reloading
- [ ] Implement overheating for Machine Crossbow?

- [ ] Add item spawners
  - [ ] Locked on specific item
  - [ ] Chosen randomly from pool

### Game setup
- [x] Create setup-flow, either physically or via /trigger
- [x] Swap out slow buttons with a faster, more intiutive replacement
  - They are very annoying to use right now
- [ ] ~~Display current map and mode on actionbar when no item is held~~
  - Replaced by player statistics
  - Currently displaying the same static `Score: 0`
- [x] Add customisation for winning score (default 20)

- [ ] Add user-specific options
  - [ ] Disable some sound effects

### Game status updates
- [ ] Flesh out game status updates in chat
  - [ ] Replace icons with more descriptive ones (rather than everything being `[!]`)
  - Take inspiration from MCC Island
  - Also use cooler custom colours
- [ ] Use titles/subtitles for some game status updates
  - aka. for kills on the subtitle layer
- [x] Display fully custom death messages
  - [x] Use "who killed who" logic to display kill messages (plexionlive -> plexiongold)
  - [x] Cover suicides (use logic to retract points if suicide?)
  - [x] Vary colour for player's own screen (red if referring to own player)
  - [x] Hide default death messages

### Designs
- [x] Redesign user card
- [x] Redesign kill feed & killstreaks
- [ ] Redesign game end flow
  - [x] More padding
  - [ ] Leaderboards
  - [ ] More cooler statistics
- [ ] Redesign lobby actionbar
- [ ] Redesign gameplay actionbar
  - Display reloading progress?

- [ ] Add all custom sound effects
  - Terraria for inspiration (mostly stock)
  - Solves the subtitles issue

- [ ] Add coin levels
  - Intended to be difficult to achieve the top.
  - Display in chat (polling), profile, and market
  - [ ] Copper (base level)
  - [ ] Silver (greater than 350)
  - [ ] Gold (greater than 1200)
  - [ ] Platinum (greater than 10000)

### Development
- [ ] Create a test structure
  - [ ] Allow main loop to be switched off
  - [ ] Allow easy game period-switching for tests
  - [ ] Create tests for various scenarios
    - [ ] Kills (who killed who etc.)
    - [ ] Killstreaks
    - [ ] Death detection
    - [ ] Round endings
    - [ ] Score (used for balancing)
    - [x] Coins (used for balancing)
    - [ ] Simulate user statistics (for user card)
    - . . .