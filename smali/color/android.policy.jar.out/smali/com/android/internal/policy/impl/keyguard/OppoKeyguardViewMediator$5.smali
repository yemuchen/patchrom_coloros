.class Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;
.super Landroid/content/BroadcastReceiver;
.source "OppoKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1537
    const-string v7, "seq"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1540
    .local v6, sequence:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    monitor-enter v8

    .line 1541
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 1543
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v7, v9}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2302(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1544
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    .line 1546
    :cond_0
    monitor-exit v8

    .line 1653
    .end local v6           #sequence:I
    :cond_1
    :goto_0
    return-void

    .line 1546
    .restart local v6       #sequence:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1549
    .end local v6           #sequence:I
    :cond_2
    const-string v7, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1550
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setDmLocked(Z)V

    .line 1551
    const-string v7, "OppoKeyguardViewMediator"

    const-string v8, "OMADM_LAWMO_LOCK received, KEYGUARD_DM_LOCKED"

    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x3e9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1553
    .local v5, msg:Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 1554
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1555
    .end local v5           #msg:Landroid/os/Message;
    :cond_3
    const-string v7, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1556
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setDmLocked(Z)V

    .line 1557
    const-string v7, "OppoKeyguardViewMediator"

    const-string v8, "OMADM_LAWMO_UNLOCK received, KEYGUARD_DM_LOCKED"

    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x3e9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1559
    .restart local v5       #msg:Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 1560
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1567
    .end local v5           #msg:Landroid/os/Message;
    :cond_4
    const-string v7, "com.android.policy.keyguard_changed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1568
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1569
    .local v4, mResolver:Landroid/content/ContentResolver;
    const-string v7, "oppo_unlock_change_pkg"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1571
    .local v2, currentUnlockService:Ljava/lang/String;
    const-string v7, "oppo_unlock_change_process"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1574
    .local v1, currentUnlockProcess:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1575
    const-string v7, "com.oppo.OppoPasswordUnlock.OppoPasswordUnlockService"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.oppo.OppoPatternUnlock.OppoPatternUnlockService"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1577
    const-string v7, "OppoKeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "put as backup: currentUnlockService = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-string v7, "oppo_unlock_pkg_back"

    invoke-static {v4, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1580
    const-string v7, "oppo_unlock_process_back"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1585
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.oppo.ACTION_STOP_UNLOCK_SERVICE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v3, mCurrentService:Landroid/content/Intent;
    const-string v7, "SERVICE_NAME"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1588
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1591
    const-string v7, "oppo_unlock_change_pkg"

    const-string v8, "com.oppo.OppoPasswordUnlock.OppoPasswordUnlockService"

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1593
    const-string v7, "oppo_unlock_change_process"

    const-string v8, "com.oppo.OppoPasswordUnlock"

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1595
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->showApkLockscreen()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1596
    .end local v1           #currentUnlockProcess:Ljava/lang/String;
    .end local v2           #currentUnlockService:Ljava/lang/String;
    .end local v3           #mCurrentService:Landroid/content/Intent;
    .end local v4           #mResolver:Landroid/content/ContentResolver;
    :cond_6
    const-string v7, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1598
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1600
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1402(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1603
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2302(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1604
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsShutdown:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2502(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1606
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimUnlocked:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2602(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    goto/16 :goto_0

    .line 1607
    :cond_8
    const-string v7, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1609
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsShutdown:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2502(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1611
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    move-result-object v7

    if-nez v7, :cond_9

    .line 1612
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->bindToLockscreenManager(Z)Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1614
    :cond_9
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1618
    :cond_a
    const-string v7, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1619
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsIPOBoot:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2802(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1620
    const-string v7, "OppoKeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IPO_DISABLE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  alarmBoot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1629
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1300()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1630
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2302(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1632
    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1634
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isAlarmUnlockScreen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1635
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x74

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1637
    :cond_d
    const-string v7, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1638
    const-string v7, "OppoKeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LAUNCH_PWROFF_ALARM: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x73

    const-wide/16 v9, 0x5dc

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1640
    :cond_e
    const-string v7, "android.intent.action.normal.boot"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1641
    const-string v7, "OppoKeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NORMAL_BOOT_ACTION: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x74

    const-wide/16 v9, 0x5dc

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1643
    :cond_f
    const-string v7, "android.intent.action.normal.shutdown"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1646
    const-string v7, "OppoKeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_SHUTDOWN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1648
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1649
    const-string v7, "sys.boot.reason"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
