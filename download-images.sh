#!/bin/bash
# ============================================================
# download-images.sh — Yoni Levy Portfolio Site
# Downloads all images from Wix CDN to the local images/ folder
# Run this once from the site root folder:
#   bash download-images.sh
# Then update HTML paths:
#   sed -i 's|https://static.wixstatic.com/media/|images/|g' *.html
# ============================================================

set -e
mkdir -p images
BASE="https://static.wixstatic.com/media"
TOTAL=0
FAILED=0

dl() {
  local file="$1"
  if [ ! -f "images/$file" ]; then
    if curl -sfL "$BASE/$file" -o "images/$file"; then
      TOTAL=$((TOTAL + 1))
      echo "✓ $file"
    else
      FAILED=$((FAILED + 1))
      echo "✗ FAILED: $file"
    fi
  else
    echo "→ already exists: $file"
    TOTAL=$((TOTAL + 1))
  fi
}

echo "🚀 Starting image download..."
echo ""

# ── Home page ─────────────────────────────────────────────
echo "── Home page ──"
dl "6679be_71e0173382a2409784ef0697b6f682ca~mv2.png"
dl "207209_f94449d174314128a5fc7bab18e97d5f~mv2.png"
dl "207209_a7bbac8147a24ab3aeaf2e60d9d6190e~mv2.png"
dl "207209_892189d69b4e4e9691fa4d9235dd0580~mv2.png"

# ── About page ────────────────────────────────────────────
echo ""
echo "── About page ──"
dl "6679be_46b10f08f14a42388cae45313d08cbbb~mv2.png"

# ── Supermart Shopper ─────────────────────────────────────
echo ""
echo "── Supermart Shopper App (31 images) ──"
dl "207209_4000ceb7ac9d40429c56b0378f885247~mv2.png"
dl "207209_aee1c340de7b4a79b537b80867572e3b~mv2.png"
dl "207209_e892345b57054601aa9c8aefcbeeffde~mv2.png"
dl "207209_3cd122b83be64d588645d727e6dbd737~mv2.png"
dl "207209_d1fa987776144e85b728c73f57ade22a~mv2.png"
dl "207209_d3804fde2e4b4e008f574f15d857e912~mv2.png"
dl "207209_d43fb2567a9a4140989f5ac8d7ea0f4c~mv2.png"
dl "6679be_fd15a44e434c415ea760f22facc09616~mv2.png"
dl "6679be_34816b355a43430ca7442af8c6be37f3~mv2.png"
dl "207209_7945ae3c194f4ea2bf03b44fed27fa3a~mv2.png"
dl "207209_012414c378614363a406b87e73112df7~mv2.png"
dl "207209_590e6569fc984ae388029b183e12a569~mv2.png"
dl "207209_d5b216ff0aa34b42bd688323fd0eb744~mv2.png"
dl "207209_19faf1e67733429198703c9315e328cd~mv2.png"
dl "207209_b082bf50fb1344a6a4a3cb56b9fd530c~mv2.png"
dl "207209_2df0d311984647d09bcb1849b26c41df~mv2.png"
dl "207209_22f84ea632ce4bc9b5a663550581983d~mv2.png"
dl "207209_2cb8bc5edf3a4a6492c7ab7f57513934~mv2.png"
dl "207209_40e6b5b8f887435fadcce94a70722d90~mv2.png"
dl "207209_e686ed863e18405985202fb88b8fac6d~mv2.png"
dl "207209_4e5dd56c10b14793bb1506ef5b8f114e~mv2.png"
dl "207209_99ba902d31174d80be683adf54afbb80~mv2.png"
dl "207209_d07ae25329b34ac8bfcf52d3721cfc70~mv2.png"
dl "207209_ae8819769717490c85e41e3481116402~mv2.png"
dl "207209_82305458010f456186b896baaf6c1837~mv2.png"
dl "207209_25aeb9e73e5f4e54aef10c48f458c547~mv2.png"
dl "207209_5271f01c12a64faea889d65deeb7d093~mv2.png"
dl "207209_2e26364246074a9ebfb1a6937c075622~mv2.png"
dl "207209_654914a596ac434389e2e9e12eb04964~mv2.png"
dl "207209_4a32df55b2ea4266bebf6634e63982e7~mv2.png"
dl "207209_af33cfd2f732474da2a8f1c897276b48~mv2.png"

# ── Supermart Web Dashboard ───────────────────────────────
echo ""
echo "── Supermart Web Dashboard (17 images) ──"
dl "207209_4cd8acb43ee140d4967c3f067498a469~mv2.png"
dl "207209_a0e5f3646fa245f98513d414ac15cc3c~mv2.png"
dl "6679be_bd5889dee62f4357bd483c3fd480f027~mv2.png"
dl "207209_b43cb4844cbe44f58d41a54001e43397~mv2.png"
dl "207209_73165bfe228545c9868acf1942364627~mv2.png"
dl "207209_3b3e5393354640d59aa10e1924905960~mv2.png"
dl "207209_ad14a07434374515a9b45aa6ce2f27a5~mv2.png"
dl "207209_0e47f52b73914ed3b8596011d33c6e0d~mv2.png"
dl "207209_ba78bfb7c0b84829866bdea647121937~mv2.png"
dl "207209_6fa24d50ebe54b75bb5ce3db4f384d24~mv2.png"
dl "207209_faccdc91de3f44d785e4fa2d7f91ac26~mv2.png"
dl "207209_0ebae679fdfa4d018ffc4b4ee4e6e8eb~mv2.png"
dl "207209_aef408e3872f4552ac6057e80ceae066~mv2.jpg"
dl "207209_ecb160b292644fad916c43cf4570fc50~mv2.jpg"
dl "207209_10994ae77fb647fe810ad800764be071~mv2.jpg"
dl "207209_d921ae3093544834b9ed476601690e03~mv2.jpg"
dl "207209_fbb484b310e844579e3a24ef6267fb30~mv2.jpg"

# ── Broadsay App ──────────────────────────────────────────
echo ""
echo "── Broadsay App (26 images) ──"
dl "207209_24d39649f1024c72835b4ec850512115~mv2.png"
dl "207209_5854f8eb21af4e9c938f5c36d9f879d9~mv2.png"
dl "207209_93269acfdbdc42ec9abc1f0fe43759ec~mv2.png"
dl "207209_be2a873839a74060a8b91a6179a3cb24~mv2.png"
dl "207209_a733c4f81ae24e1abef229f4e4c8830b~mv2.png"
dl "207209_70f2379d31be4f8f97fc8007734832a9~mv2.png"
dl "6679be_10d410ad95b74768ac76a67de7d22ac8~mv2.png"
dl "207209_294ba024aa17413895cc53c8ab733ffa~mv2.png"
dl "207209_858a7fe13b5e46fdae954452e0b3e209~mv2.png"
dl "207209_52e336180f3145109286b9dfb1269caa~mv2.png"
dl "207209_4a69ec93b024408dad57d691f99e1b5c~mv2.png"
dl "207209_35a8f41cdbcd41aa8ca292414435c3af~mv2.png"
dl "207209_a304a5a5a61f43bb89121c6ff64c5049~mv2.png"
dl "207209_cb8cac3adb0d414896797826fc294743~mv2.png"
dl "207209_1dfa7de7e79341e4a28aeb7c185391eb~mv2.png"
dl "207209_8d77e7c72852489987e73abe77ea706c~mv2.png"
dl "207209_ab5a8ba3447a4b78bb1ac8dbeac4b6ad~mv2.png"
dl "207209_22c46c144684423a904f1fb0be3991f8~mv2.png"
dl "207209_80de2eb163dc43d1a8863a95be236a39~mv2.png"
dl "207209_df8dcd257c9646c6921559283cd81b7e~mv2.png"
dl "207209_d947232060064e8bb0360f3365ae2d08~mv2.png"
dl "207209_b4f0989eccda495f9954a67c03c89cba~mv2.png"
dl "207209_d4ee7cee4cd947bd8da1448289101967~mv2.png"
dl "207209_0864bd0dbf3e47b38190ddcd083142ec~mv2.png"
dl "207209_c9030532e98b4c8f9cab6dedd15f0b2b~mv2.png"
dl "207209_b089f52f8c504f289464af3124b51ea8~mv2.png"

echo ""
echo "============================================"
echo "✅ Done! $TOTAL images downloaded successfully."
if [ "$FAILED" -gt 0 ]; then
  echo "⚠️  $FAILED images failed to download."
fi
echo "============================================"
echo ""
echo "Next step — images are now local. Run this to update HTML files:"
echo ""
echo "  sed -i 's|https://static.wixstatic.com/media/|images/|g' *.html"
echo ""
echo "Then open index.html in your browser to verify everything looks good."
