.class public Ln0/y2$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/y2;


# direct methods
.method public constructor <init>(Ln0/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y2$j;->a:Ln0/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln0/y2$j;->a:Ln0/y2;

    iget-object v1, v0, Ln0/y2;->A:Lui/a;

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v0, v0, Ln0/y2;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lui/b$a;->show()V

    .line 3
    :cond_0
    iget-object v0, p0, Ln0/y2$j;->a:Ln0/y2;

    iget-object v0, v0, Ln0/y2;->A:Lui/a;

    sget v1, Lu0/b;->K:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lui/a;->s(IZ)V

    :cond_1
    return-void
.end method
