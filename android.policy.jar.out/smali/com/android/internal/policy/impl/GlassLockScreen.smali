.class Lcom/android/internal/policy/impl/GlassLockScreen;
.super Landroid/widget/LinearLayout;
.source "GlassLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlassLockScreen$4;,
        Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;,
        Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_CARRIER_NAME:Z = false

.field private static final DISPLAY_RAD_DUAL_CLOCK_ON_LOCK_UI:Z = false

.field private static final DISPLAY_SIM_LOCK_UI:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final GLASS_EFFECT_ANIMATION:Z = true

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final PROP_PIN_STATUS:Ljava/lang/String; = "ril.pinstatus"

.field private static final SEC_LOCK_KEY_PERM_BLOCKED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GlassLockScreen"

.field private static mSimLockPreparing:Z


# instance fields
.field private GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallButton2:Landroid/widget/Button;

.field private mEnableMenuKeyInLockScreen:Z

.field private mHelp2:Landroid/widget/TextView;

.field private mInitGlassHeight:I

.field private mInitGlassLeft:I

.field private mInitGlassTop:I

.field private mInitGlassWidth:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLayoutGlassEffect:Landroid/widget/ImageView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenBackground:Landroid/widget/ImageView;

.field private mMediaLayout:Landroid/widget/LinearLayout;

.field private mMediaOpened:Z

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mSimLockMsg1:Landroid/widget/TextView;

.field private mSimLockMsg2:Landroid/widget/TextView;

.field private mSimLockMsg3:Landroid/widget/TextView;

.field private mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field private mSweepTextBox:Landroid/widget/RelativeLayout;

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

.field private mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

.field private mUnlockHorizontalMargin:I

.field private mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

.field private mUnlockRatio:I

.field private mUnlockVerticalMargin:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v8, 0x2fa

    const/16 v7, 0x1e0

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    const/16 v2, 0x34

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockRatio:I

    sget-object v2, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEnableMenuKeyInLockScreen:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    const v2, 0x109007b

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v2, 0x10201f0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x102027a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    const v2, 0x102027b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    const v2, 0x10201eb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v3, 0x1040324

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v2, 0x102027c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    const v2, 0x102027d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    const v3, 0x1040324

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v2, 0x1020279

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    const v2, 0x102027f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const v2, 0x102027e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSweepTextBox:Landroid/widget/RelativeLayout;

    const v2, 0x1020280

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    const v3, 0x1040430

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const v3, 0x1080374

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;Lcom/android/internal/policy/impl/GlassLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    :goto_1
    const v2, 0x1020278

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v2, 0x1020277

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v0, densityDpiForGlass:I
    sparse-switch v0, :sswitch_data_0

    const/16 v2, 0x150

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSimLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    if-eqz v2, :cond_3

    sput-boolean v6, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusable(Z)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusableInTouchMode(Z)V

    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->setDescendantFocusability(I)V

    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    return-void

    .end local v0           #densityDpiForGlass:I
    :cond_0
    const v2, 0x109007c

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .restart local v0       #densityDpiForGlass:I
    :sswitch_0
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto :goto_3

    :sswitch_1
    const/16 v2, 0x150

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto :goto_3

    :sswitch_2
    const/16 v2, 0xa8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    const/16 v2, 0x118

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    :cond_3
    sput-boolean v5, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    return v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isPermanentBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    :goto_1
    return-object v1

    .end local v0           #missingAndNotProvisioned:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #missingAndNotProvisioned:Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isDualClockEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isPermanentBlock()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private putEmergencyBelow(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 0

    .prologue
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private switchLockscreenMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    return-void
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .locals 2
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UnlockMediaController;->setControllerVisibility(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 0
    .parameter "inPortrait"

    .prologue
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getWallpaperMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->switchLockscreenMode(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onStop()V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->forceLayout()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClock;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    return-void
.end method
