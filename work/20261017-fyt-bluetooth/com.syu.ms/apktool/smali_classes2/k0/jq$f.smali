.class public Lk0/jq$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jq;


# direct methods
.method public constructor <init>(Lk0/jq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jq$f;->a:Lk0/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/jq;->F:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/jq$f;->a:Lk0/jq;

    iget-boolean v1, v0, Lk0/jq;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lk0/jq;->d3(Lk0/jq;Z)V

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/jq;->F:I

    :cond_1
    return-void
.end method
