.class final Lcom/pantech/app/music/library/FragmentInfo$1;
.super Ljava/lang/Object;
.source "FragmentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/FragmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pantech/app/music/library/FragmentInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 230
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo;

    invoke-direct {v0, p1}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/library/FragmentInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pantech/app/music/library/FragmentInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 235
    new-array v0, p1, [Lcom/pantech/app/music/library/FragmentInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/library/FragmentInfo$1;->newArray(I)[Lcom/pantech/app/music/library/FragmentInfo;

    move-result-object v0

    return-object v0
.end method
