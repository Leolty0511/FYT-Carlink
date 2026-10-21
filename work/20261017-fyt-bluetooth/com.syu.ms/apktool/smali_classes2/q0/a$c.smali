.class public Lq0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq0/a;


# direct methods
.method public constructor <init>(Lq0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq0/a$c;->a:Lq0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/a$c;->a:Lq0/a;

    const/16 v1, 0x18

    const/16 v2, 0xe4

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V

    .line 2
    iget-object v0, p0, Lq0/a$c;->a:Lq0/a;

    const/16 v1, 0x1b

    const/16 v2, 0xf0

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V

    .line 3
    iget-object v0, p0, Lq0/a$c;->a:Lq0/a;

    invoke-static {v0}, Lq0/a;->i(Lq0/a;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lq0/a;->d(Lq0/a;II)V

    .line 4
    iget-object v0, p0, Lq0/a$c;->a:Lq0/a;

    const/4 v1, 0x2

    const/16 v2, 0xb9

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V

    .line 5
    iget-object v0, p0, Lq0/a$c;->a:Lq0/a;

    invoke-static {v0}, Lq0/a;->g(Lq0/a;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lq0/a;->d(Lq0/a;II)V

    return-void
.end method
