#!/system/bin/sh

echo ""
echo "
 __  __    __    _  _     ___    __    __  __  ____  _  _  ___     __    ___  
(  \/  )  /__\  ( \/ )   / __)  /__\  (  \/  )(_  _)( \( )/ __)   /. |  / _ \ 
 )    (  /(__)\  )  (   ( (_-. /(__)\  )    (  _)(_  )  (( (_-.  (_  _)( (_) )
(_/\/\_)(__)(__)(_/\_)   \___/(__)(__)(_/\/\_)(____)(_)\_)\___/    (_)()\___/ "
echo ""
sleep 2

echo "[ Info Device ]"
echo ""
echo "• ID Device    » $(getprop ro.product.model)"
sleep 1.5
echo "• ID Brand     » $(getprop ro.product.brand)"
sleep 1.5
echo "• ID Model     » $(getprop ro.product.name)"
sleep 1.5
echo "• ID Kernel    » $(uname -r)"
sleep 1.5
echo "• ID Chipset   » $(getprop ro.product.board)"
sleep 1
echo ""
echo " ####################################"
echo "    Developer : Aldo"
echo " ####################################"
echo "    My Telegram : @Chermodsc"
echo " ####################################"
echo ""
sleep 2
echo " Installation process.. [ + ]"
echo ""
sleep 0.5
echo " [■□□□□□□□□□] 10% "
sleep 1
echo " [■■□□□□□□□□] 20% "
sleep 1
echo " [■■■□□□□□□□] 30% "
sleep 1
echo " [■■■■□□□□□□] 40% "
sleep 1
echo " [■■■■■□□□□□] 50% "
sleep 1
echo " [■■■■■■□□□□] 60% "
sleep 1
echo " [■■■■■■■□□□] 70% "
sleep 1
echo " [■■■■■■■■□□] 80% "
sleep 1
echo " [■■■■■■■■■□] 90% "
sleep 5

# Function to apply settings
apply_settings() {
    echo "Applying system settings..."
    
    # Array of commands
    cmds=(
"settings put system fas_boost true"
"settings put system use_performance_governor true"
"setprop debug.egl.swapinterval -60"
"settings put secure wifi.supplicant_scan_interval 180"
"setprop debug.atrace.tags.enableflags 0"
"settings put system kernel.android.checkjni 0"
"settings put system vm.checkjni false"
"setprop debug.monitor false"
"settings put system Hardware.Renderer 1"
"settings put system HardwareAccelerated true"
"settings put system game.accelerate.hw 1"
"setprop debug.renderthread.reduceopstasksplitting true"
"setprop debug.rs.max-threads 8"
"setprop debug.rs.min-threads 8"
"settings put system fps_enable 1"
"settings put system fps.capsmin 120fps"
"settings put system fps.capsmax 120fps"
"settings put global cpu.fps 120"
"settings put global gpu.fps 120"
"settings put global boot.fps 30"
"settings put system ui.accelerate true"
"settings put secure service.trim.enable true"
"settings put system dalvik.hyperthreading true"
"setprop debug.force_hw_ui true"
"setprop debug.hw2d.force 1"
"setprop debug.hw3d.force 1"
"setprop debug.hwui.disable_vsync true"
"settings put system fw.dex2oat_thread_count 4"
"settings put global dalvik.vm.boot-dex2oat-threads 8"
"settings put global dalvik.vm.dex2oat-threads 4"
"settings put global dalvik.vm.image-dex2oat-threads 4"
"settings put global dalvik.vm.dex2oat-filter speed"
"settings put global dalvik.vm.image-dex2oat-filter speed"
"settings put system persist.perf.cores 8"
"settings put system multicore_packet_scheduler 1"
"settings put global gpu_cache_size 256"
"settings put global foreground_mem_priority high"
"settings put global game_mode_enabled 1"
"settings put system game_mode 1"
"settings put system peak_refresh_rate 120"
"settings put system min_refresh_rate 120"
"setprop debug.sf.hw 1"
"setprop debug.composition.type gpu"
"setprop debug.hwui.renderer skiagl"
"setprop debug.performance.tuning 1"
"setprop debug.egl.swapinterval 1"
"setprop debug.sf.disable_backpressure 1"
"setprop debug.sf.latch_unsignaled 1"
    )

    # Execute each command and check for success
    for cmd in "${cmds[@]}"; do
        eval $cmd
        if [ $? -eq 0 ]; then
            echo "[✔] $cmd"
        else
            echo "[✘] $cmd failed"
        fi
    done

    # Apply game mode performance settings
    echo "Applying game mode performance settings..."
    for package in com.pwrd.opmwsea com.kurogame.gplay.punishing.grayraven.en \
        com.netmarble.bnsmasia com.nexon.v4gb com.syjgame.hgame.cn \
        com.lnaz.jlsyen com.rsg.heroesevolved com.wemade.mir4global \
        com.nebulajoy.act.dmcpoc com.garena.game.bc \
        com.playdigious.littlenightmare com.mobile.legends \
        com.garena.game.codm com.dts.freefiremax com.dts.freefireth \
        com.miHoYo.GenshinImpact com.tencent.ig com.pubg.newstate \
        com.shooter.modernWarships com.carxtech.sr \
        com.pubg.imobile com.pubg.krmobile com.HoYoverse.hkrpgoversea \
        com.roblox.client com.ngame.allstar.eu com.garena.game.lmjx \
        com.miHoYo.bh3global com.epicgames.fortnite com.mojang.minecraftpe \
        com.proximabeta.mf.uamo net.wargaming.wot.blitz \
        com.mobilelegends.hwag com.ea.gp.fifamobile \
        com.gameloft.android.ANMP.GloftA8HM com.igg.android.vikingriseglobal \
        com.axlebolt.standoff2 com.kakaogames.gdts com.netease.newspike \
        com.sofunny.Sausage com.levelinfinite.sgameGlobal.midaspay \
        com.netmarble.sololv jp.konami.pesam; do
        cmd game mode performance "$package" 2>&1 | grep -v "performance not supported by $package"
        if [ $? -eq 0 ]; then
            echo "[✔] Game mode performance applied to $package"
        else
            echo "[✘] Failed to apply game mode performance to $package"
        fi
    done
}

# Call the function to apply settings
apply_settings > /dev/null

sleep 1
echo " [■■■■■■■■■■] 100% "
echo ""
echo " Installed success [✔]"
echo ""
echo " Ｓｕｃｃｅｓｓ！"
echo ""
cmd notification post -S bigtext -t 'Max Gaming 4.0
[ Status : Online ]' 'tag' "Perangkat anda telah di tingkatkan untuk bermain game" > /dev/null 2>&1 & # Berfungsi Untuk Mendapatkan notif di device kalian