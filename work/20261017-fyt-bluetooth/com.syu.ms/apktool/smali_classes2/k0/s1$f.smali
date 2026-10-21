.class public Lk0/s1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/s1;


# direct methods
.method public constructor <init>(Lk0/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/s1$f;->a:Lk0/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/s1$f;->a:Lk0/s1;

    iget v1, v0, Lk0/s1;->p:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/s1;->p:I

    .line 3
    :cond_0
    iget v1, v0, Lk0/s1;->p:I

    if-nez v1, :cond_3

    .line 4
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Ll0/c0;->e()V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-static {v0}, Lk0/s1;->e3(Lk0/s1;)V

    :cond_3
    :goto_1
    return-void
.end method
