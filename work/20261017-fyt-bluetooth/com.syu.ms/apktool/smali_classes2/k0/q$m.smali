.class public Lk0/q$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/q;


# direct methods
.method public constructor <init>(Lk0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/q$m;->a:Lk0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/q$m;->a:Lk0/q;

    iget v1, v0, Lk0/q;->s:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/16 v5, 0x9

    if-eq v1, v5, :cond_1

    move v2, v3

    :cond_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    sub-int/2addr v1, v3

    .line 2
    iput v1, v0, Lk0/q;->s:I

    .line 3
    :cond_2
    iget v1, v0, Lk0/q;->s:I

    if-nez v1, :cond_3

    .line 4
    iput v5, v0, Lk0/q;->s:I

    :cond_3
    return-void
.end method
