.class public Lapp/ActivityMain$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/ActivityMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lapp/ActivityMain;


# direct methods
.method public constructor <init>(Lapp/ActivityMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/ActivityMain$b;->a:Lapp/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lapp/ActivityMain$b;->a:Lapp/ActivityMain;

    invoke-static {p1}, Lapp/ActivityMain;->b(Lapp/ActivityMain;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iget-object v0, p0, Lapp/ActivityMain$b;->a:Lapp/ActivityMain;

    invoke-static {v0}, Lapp/ActivityMain;->b(Lapp/ActivityMain;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
