// make.fun gta6-clipper-01 entry program (Node 22, standard library only, no network).
// Reads VIDEO.json at the repo root, validates the YouTube URL, and writes /output.
// The video itself is the entry; this program only proves the repo shape the bounty asks for.
import { readFileSync, mkdirSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = dirname(fileURLToPath(import.meta.url));
const raw = readFileSync(join(root, "VIDEO.json"), "utf8");
const data = JSON.parse(raw) as { youtube_url?: unknown; title?: unknown };

const url = typeof data.youtube_url === "string" ? data.youtube_url.trim() : "";
const ok =
  /^https:\/\/(www\.)?(youtube\.com\/(watch\?v=|shorts\/)|youtu\.be\/)[A-Za-z0-9_-]{6,}/.test(url);
if (!ok) {
  throw new Error("VIDEO.json youtube_url must be a public YouTube watch/shorts URL");
}

const outDir = "/output";
mkdirSync(outDir, { recursive: true });
writeFileSync(
  join(outDir, "entry.json"),
  JSON.stringify({ youtube_url: url, title: data.title ?? null }, null, 2) + "\n",
);
console.log(`OK ${url}`);
