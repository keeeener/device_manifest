#!/bin/bash

if [ "${android}" = "" ]; then
        android=~/AORP
fi

## camera: Fix preview on SEMC msm7x30 devices
cd ${android}/frameworks/av
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_av refs/changes/82/54582/2 && git cherry-pick FETCH_HEAD

## gui: Allow devices to disable fence sync
cd ${android}/frameworks/native
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_native refs/changes/94/52994/3 && git cherry-pick FETCH_HEAD

## DisplayDevice: Backwards compatibility with old EGL
cd ${android}/frameworks/native
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_native refs/changes/57/54257/5 && git cherry-pick FETCH_HEAD

## Allow using Classic WebView
cd ${android}/frameworks/base
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_base refs/changes/54/56054/2 && git cherry-pick FETCH_HEAD

## Revert "Remove the classic WebView from the build."
cd ${android}/frameworks/webview
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_webview refs/changes/55/56055/1 && git cherry-pick FETCH_HEAD

