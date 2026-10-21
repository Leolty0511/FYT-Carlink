.class public Lk0/ie$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ie;


# direct methods
.method public constructor <init>(Lk0/ie;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ie$b;->a:Lk0/ie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lw0/d;->j:I

    invoke-static {}, Lk0/ie;->f3()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Lw0/d;->j:I

    invoke-static {v0}, Lk0/ie;->g3(I)I

    .line 3
    invoke-static {}, Lk0/ie;->a3()V

    :cond_0
    return-void
.end method
