.class public Ln0/q2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/q2;->T3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/a;

.field public final synthetic b:Ln0/q2;


# direct methods
.method public constructor <init>(Ln0/q2;Lui/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln0/q2$c;->b:Ln0/q2;

    iput-object p2, p0, Ln0/q2$c;->a:Lui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln0/q2$c;->a:Lui/a;

    if-eqz v0, :cond_1

    .line 2
    sget v1, Ly0/f;->c:I

    sget v2, Ly0/f;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3}, Lui/a;->s(IZ)V

    :cond_1
    return-void
.end method
