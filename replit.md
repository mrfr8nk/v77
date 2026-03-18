# SubZero MD - WhatsApp Bot

## Overview
SubZero MD is a high-performance, multi-device WhatsApp bot built with TypeScript and Node.js using the Baileys library. Created by **Mr Frank OFC**.

## Project Structure
- `index.ts` - Main entry point, connection handling, connection message on startup
- `config.ts` - Central configuration (bot name, prefix, mode, footer, API keys, etc.)
- `lib/` - Core helpers (command handler, message handler, store, server, etc.)
- `plugins/` - 250+ command plugins (auto-loaded on start)
- `assets/thumb.png` - Bot thumbnail image used in connection message
- `data/` - Local JSON persistent data (fallback if no external DB)
- `session/` - WhatsApp session credentials

## Key Configuration (config.ts)
- `botName`: SubZero MD
- `botOwner`: Darrell M
- `ownerNumber`: 263719647303
- `author`: Mr Frank OFC
- `prefixes`: ['.', '!', '/', '#']
- `commandMode`: public / self / private
- `footer`: `𝙂𝙚𝙣𝙚𝙧𝙖𝙩𝙚𝙙 𝘽𝙮 𝙎𝙪𝙗𝙕𝙚𝙧𝙤` (appended to AI, download, and search results)

## Start Command
```
npm run build && npm start
```

## Branding
- Bot name: **SubZero MD** (replaced all MEGA-MD references)
- Author/Credit: **Mr Frank OFC** (replaced GlobalTechInfo/GlobalTechInc)
- Footer on results: `𝙂𝙚𝙣𝙚𝙧𝙖𝙩𝙚𝙙 𝘽𝙮 𝙎𝙪𝙗𝙕𝙚𝙧𝙤`

## Connection Message
On bot startup, a detailed message is sent to the bot's own number including:
- Bot name, owner name, owner number, version, prefixes, mode, platform, status, command count
- How-to guide for changing mode, prefix, and owner number
- Thumb image attached (assets/thumb.png)

## New Plugins Added (from SubZero Mini Bot)
- `gcstory.ts` — Post text or media as a group story/status (group admin only)
- `antiedit.ts` — Detect edited messages and report them (chat or private/owner modes)
- `antiviewonce.ts` — Auto-forward view-once images/videos/audio to owner inbox
- `setprefix.ts` — Change bot command prefix at runtime

## Updated Plugins
- `play.ts` — Enriched display: sends thumbnail image with duration, artist, views before audio
- `video.ts` — Enriched display: sends thumbnail first, then downloads HD video

## Event Hooks
- `messages.update` event added to `index.ts` → calls `handleEditedMessage` for antiedit
- `handleViewOnceMessage` hooked into `messageHandler.ts` → fires on every incoming message

## Plugins with Footer
These plugins append `config.footer` to their responses:
- AI: ai-gpt.ts, ai-llama.ts, ai-mistral.ts
- Downloads: facebook.ts, instagram.ts, video.ts, gitclone2.ts
- Search: ytsearch.ts
- Image: grayscale.ts, invert.ts, sepia.ts
- Text: textmaker.ts
