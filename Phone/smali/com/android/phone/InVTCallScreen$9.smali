.class Lcom/android/phone/InVTCallScreen$9;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$9;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$9;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f03003b

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    return-void
.end method
