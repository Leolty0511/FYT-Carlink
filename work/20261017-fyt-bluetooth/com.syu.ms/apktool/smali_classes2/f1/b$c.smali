.class public Lf1/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/b;


# direct methods
.method public constructor <init>(Lf1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/b$c;->a:Lf1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/b$c;->a:Lf1/b;

    invoke-virtual {v0}, Lf1/b;->Z()V

    .line 2
    iget-object v0, p0, Lf1/b$c;->a:Lf1/b;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lf1/q;->V(II)I

    .line 3
    iget-object v0, p0, Lf1/b$c;->a:Lf1/b;

    invoke-static {v0}, Lf1/b;->Y(Lf1/b;)I

    move-result v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lf1/q;->V(II)I

    return-void
.end method
