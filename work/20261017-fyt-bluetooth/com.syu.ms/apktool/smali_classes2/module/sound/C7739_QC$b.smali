.class public Lmodule/sound/C7739_QC$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7739_QC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7739_QC;


# direct methods
.method public constructor <init>(Lmodule/sound/C7739_QC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7739_QC$b;->a:Lmodule/sound/C7739_QC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/sound/C7739_QC$b;->a:Lmodule/sound/C7739_QC;

    iget-object v0, v0, Lmodule/sound/C7739_QC;->v8:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
