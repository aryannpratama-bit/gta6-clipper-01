# make.fun — Clip GTA 6 for the most YouTube views (gta6-clipper-01)
Disiapkan Sabtu 21 Nov 2026 ~08:10 WIB. Deadline: Senin 23 Nov 2026 01:00 UTC = 08:00 WIB.
Reward $500, 20 tempat dibayar (1st $100, 2nd $70, 3rd $50, 4th-10th $20, 11th-20th $14). Ranking by YouTube views at deadline.

## Syarat bounty (dari halaman resmi, dicek 21 Nov 2026 08:04 WIB)
- Klip VERTIKAL (Short), hook GTA 6 lalu pitch make.fun di layar / suara / keduanya: penonton bisa dapat uang di make.fun bikin klip pakai AI.
- Video publik di YouTube, publish setelah bounty buka & sebelum deadline, tetap publik sampai hasil keluar.
- Deskripsi video wajib ada baris: Made by my AI agent for a $500 bounty on make.fun, where you can earn money making clips with AI: https://make.fun/bounty/gta6-clipper-01 + play code make.fun entrant (atau channel description yang bawa code).
- Repo GitHub publik milik akun GitHub sendiri, dibuat setelah bounty buka, lisensi OSI-approved, program di main.ts (Node 22) di root, stdlib only, no network.
- VIDEO.json di root repo: alamat video YouTube.
- Transkrip sesi AI yang menemukan momen, memutuskan creative, memotong/render, menulis repo — di-upload tiap submission. Klip yang pembuatannya tidak ditunjukkan transkrip = diskualifikasi.
- Maks 5 submission/hari, 10 total. Submission terakhir sebelum deadline = entry final yang di-rank.
- Views beli/bot = diskualifikasi.

## Status prasyarat di mesin ini
- [x] Node.js: v24.22.1 (syarat >=22.18) — OK
- [x] ffmpeg: 8.1 — OK
- [x] Bahan klip: Extended Look 26:48 lengkap + 9 klip 30 dtk horizontal beat-sync/v5 sudah jadi (lihat INVENTORY.md). TAPI format bounty beda: butuh vertikal + pitch. Klip horizontal yang disetujui user TIDAK bisa langsung submit.
- [ ] YouTube channel yang bisa publish publik: BELUM DIKETAHUI. Butuh konfirmasi user: channel mana, dan siapa upload (user upload sendiri lebih aman, jangan kasih password).
- [ ] GitHub connect: BELUM. Repo lokal disiapkan di folder ini, belum push. Butuh user connect GitHub + pilih repo yang boleh diakses.
- [ ] Akun make.fun + play code: BELUM ADA. Play code hanya muncul setelah sign-in. Pilihan: (A) user sign-in sendiri (GitHub/Google/wallet Solana user) lalu agent connect sebagai agent wallet — payout ke wallet user, agent tidak pegang PK user. (B) agent bikin keypair Solana sendiri = file private key tersimpan di mesin ini + akun tidak bisa dihapus (cuma merge) — nabrak aturan jangan simpan PK. Rekomendasi: jalur A. BELUM dibuat apa pun, menunggu keputusan user per aksi.
- [ ] Wallet Solana payout: ikut keputusan akun di atas. Tidak dibuat di prep ini.

## Yang sudah disiapkan lokal (folder ini)
- main.ts — program Node 22 stdlib-only: baca VIDEO.json, validasi URL YouTube, tulis /output. Siap push setelah VIDEO.json diisi URL asli.
- VIDEO.json — template, isi setelah video live.
- LICENSE — MIT (OSI-approved).
- youtube-copy.md — 3 opsi judul + deskripsi siap copy-paste (play code masih placeholder).
- render-vertical.sh — script render vertikal 1080x1920 dari klip horizontal pilihan + overlay pitch 10 detik terakhir. Test render 1 klip sudah dibuat: bounty-vertical-test.mp4 (dari extended-store-holdup-beat.mp4).
- INVENTORY.md — daftar klip kandidat + rekomendasi pick untuk Short.

## Urutan eksekusi kalau user gas (semua butuh approval per langkah)
1. User pilih klip sumber + approve gaya vertikal/pitch test.
2. User konfirmasi YouTube channel + sign-in make.fun (jalur A) → dapat play code.
3. Agent render final vertikal dengan pitch + play code di deskripsi (bukan di video, kecuali user mau).
4. User upload publik ke YouTube (atau agent upload hanya jika user sudah kasih akses upload tanpa password — default user upload).
5. Isi VIDEO.json dengan URL live, push repo publik, bundle transkrip sesi clip + sesi repo ini, submit via kit. Cek `bundle --dry-run` dulu: sesi Muse ini harus terbaca kit; kalau kit tidak membaca sesi ini, entry bisa ranked tapi tanpa tempat berbayar (handed_over_places none) — verifikasi sebelum submit, jangan klaim pasti dibayar.

## Bounty lain yang mepet (untuk triase, bukan rekomendasi)
- Bring the humans again $1.000 tutup HARI INI Sabtu 21 Nov 17:30 WIB, butuh linked GitHub. Tanpa GitHub + tanpa ad page/signups, tidak realistis dikejar hari ini. Saran: skip, fokus GTA6 clipper.
- Post a GTA 6 meme on X $500 tutup Senin 23 Nov 14:00 UTC = 21:00 WIB — TERverifikasi 21 Nov 2026 ~09:15 WIB dari halaman resmi https://make.fun/bounty/gta6-meme-x-01 (search result crawl 2 jam lalu): 50 tempat dibayar, escrow $500 USDC di Solana sejak 19 Nov. Syarat: akun X publik (tidak protected, tetap publik sampai hasil keluar) yang bisa post gambar; meme GTA 6 dibuat agent WAJIB menampilkan make.fun di gambar (maskot ghost / logo / nama dari https://make.fun/press/ — tanpa itu rank di bawah semua yang ada); teks post wajib ada make.fun (link/tulisan) dan/atau tag @makefunai + play code entrant, link bounty https://make.fun/bounty/gta6-meme-x-01 disarankan; deliverable juga repo GitHub publik (atau source bundle) — detail repo/transkrip perlu dibaca penuh di halaman resmi sebelum eksekusi. Node 22.18+ terpenuhi (v24.22.1). Play code + GitHub tetap butuh sign-in user (jalur A sama seperti clipper) — BELUM dibuat, menunggu keputusan user soal bounty clipper dulu. Jangan bikin/post meme sebelum user gas per aksi.
