.class public Ln0/g4$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/g4$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ln0/g4$c;


# direct methods
.method public constructor <init>(Ln0/g4$c;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln0/g4$c$a;->c:Ln0/g4$c;

    iput p2, p0, Ln0/g4$c$a;->a:I

    iput-boolean p3, p0, Ln0/g4$c$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    .line 1
    iget v3, p0, Ln0/g4$c$a;->a:I

    if-ne v3, v2, :cond_0

    const/16 v2, 0xcd

    goto :goto_0

    :cond_0
    const/16 v2, 0xcc

    :goto_0
    const/4 v3, 0x2

    aput v2, v0, v3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    iget-boolean v0, p0, Ln0/g4$c$a;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 3
    invoke-static {v0, v1}, Lh0/e;->J(IZ)V

    :cond_1
    return-void
.end method
