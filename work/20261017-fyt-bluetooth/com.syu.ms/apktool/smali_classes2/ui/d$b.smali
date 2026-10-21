.class public Lui/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/d;


# direct methods
.method public constructor <init>(Lui/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/d$b;->a:Lui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lui/d$b;->a:Lui/d;

    invoke-static {v0}, Lui/d;->k(Lui/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2
    iget-object v0, p0, Lui/d$b;->a:Lui/d;

    invoke-static {v0}, Lui/d;->j(Lui/d;)V

    return-void
.end method
