.class public Lf/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a;


# direct methods
.method public constructor <init>(Lf/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a$a;->a:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->b:Lh0/f;

    instance-of v1, v0, Lh0/b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lh0/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh0/b;->a0(II)V

    :cond_0
    return-void
.end method
