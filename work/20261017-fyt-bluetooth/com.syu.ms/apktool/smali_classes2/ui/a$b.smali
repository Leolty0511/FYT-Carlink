.class public Lui/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/a;


# direct methods
.method public constructor <init>(Lui/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$b;->a:Lui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lui/a$b;->a:Lui/a;

    invoke-static {v0}, Lui/a;->j(Lui/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2
    iget-object v0, p0, Lui/a$b;->a:Lui/a;

    invoke-virtual {v0}, Lui/a;->o()V

    return-void
.end method
