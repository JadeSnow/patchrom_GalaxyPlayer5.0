.class final Lcom/android/settings/fuelgauge/PhoneSipper$1;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PhoneSipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/settings/fuelgauge/PhoneSipper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/PhoneSipper;
    .locals 1
    .parameter "source"

    .prologue
    new-instance v0, Lcom/android/settings/fuelgauge/PhoneSipper;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/PhoneSipper;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PhoneSipper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/PhoneSipper;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/fuelgauge/PhoneSipper;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Lcom/android/settings/fuelgauge/PhoneSipper;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PhoneSipper$1;->newArray(I)[Lcom/android/settings/fuelgauge/PhoneSipper;

    move-result-object v0

    return-object v0
.end method