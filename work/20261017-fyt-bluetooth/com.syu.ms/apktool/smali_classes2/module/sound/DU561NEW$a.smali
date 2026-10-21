.class public Lmodule/sound/DU561NEW$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/DU561NEW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/DU561NEW;


# direct methods
.method public constructor <init>(Lmodule/sound/DU561NEW;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/DU561NEW$a;->a:Lmodule/sound/DU561NEW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/sound/DU561NEW$a;->a:Lmodule/sound/DU561NEW;

    iget-object v0, v0, Lmodule/sound/DU561NEW;->M1:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
