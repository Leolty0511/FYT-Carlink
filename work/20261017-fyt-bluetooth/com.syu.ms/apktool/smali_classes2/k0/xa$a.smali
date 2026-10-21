.class public Lk0/xa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xa;


# direct methods
.method public constructor <init>(Lk0/xa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xa$a;->a:Lk0/xa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/xa$a;->a:Lk0/xa;

    iget-byte v1, v0, Lk0/xa;->o:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/xa;->o:B

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 2
    invoke-static {v0}, Lk0/xa;->f3(Lk0/xa;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/xa$a;->a:Lk0/xa;

    const/4 v1, 0x0

    iput-byte v1, v0, Lk0/xa;->o:B

    :cond_0
    return-void
.end method
