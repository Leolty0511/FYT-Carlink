.class public Lk0/il$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/il;


# direct methods
.method public constructor <init>(Lk0/il;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/il$c;->a:Lk0/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/il$c;->a:Lk0/il;

    sget v1, Ly0/f;->Q0:I

    iput v1, v0, Lk0/il;->s:I

    .line 2
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_3

    .line 3
    :cond_0
    sget v1, Ly0/f;->Q0:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0, v2}, Lk0/il;->c3(Lk0/il;Z)V

    goto :goto_0

    .line 5
    :cond_2
    sget v1, Lu0/b;->j4:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lk0/il;->c3(Lk0/il;Z)V

    :cond_3
    :goto_0
    return-void
.end method
