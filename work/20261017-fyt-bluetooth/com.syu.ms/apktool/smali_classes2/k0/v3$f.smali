.class public Lk0/v3$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/v3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/v3;


# direct methods
.method public constructor <init>(Lk0/v3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/v3$f;->a:Lk0/v3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/v3$f;->a:Lk0/v3;

    iget-byte v1, v0, Lk0/v3;->q:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/v3;->q:B

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 2
    invoke-static {v0}, Lk0/v3;->f3(Lk0/v3;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/v3$f;->a:Lk0/v3;

    const/4 v1, 0x0

    iput-byte v1, v0, Lk0/v3;->q:B

    :cond_0
    return-void
.end method
