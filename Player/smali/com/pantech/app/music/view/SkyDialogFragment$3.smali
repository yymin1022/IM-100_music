.class Lcom/pantech/app/music/view/SkyDialogFragment$3;
.super Ljava/lang/Object;
.source "SkyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/view/SkyDialogFragment;->createChkAskPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyDialogFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V
    .registers 2

    .prologue
    .line 749
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment$3;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$3;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogChkQuestionListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    if-eqz v0, :cond_d

    .line 754
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment$3;->this$0:Lcom/pantech/app/music/view/SkyDialogFragment;

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogChkQuestionListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;->onDialogYesSelected(Landroid/content/DialogInterface;)V

    .line 755
    :cond_d
    return-void
.end method
