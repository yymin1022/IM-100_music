.class public Lcom/pantech/app/music/utils/MusicAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "MusicAlphabetIndexer.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "alphabet"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "letter"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "wordKey":Ljava/lang/String;
    invoke-static {p2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "letterKey":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 39
    const/4 v2, 0x0

    .line 41
    :goto_f
    return v2

    :cond_10
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_f
.end method
