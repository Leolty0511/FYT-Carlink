.class public Lk0/yr$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yr;


# direct methods
.method public constructor <init>(Lk0/yr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yr$e;->a:Lk0/yr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Ly0/f;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget v0, Ly0/f;->C0:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lk0/yr$e;->a:Lk0/yr;

    iput v0, v1, Lk0/yr;->x:I

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/yr$e;->a:Lk0/yr;

    const/16 v1, 0xff

    iput v1, v0, Lk0/yr;->x:I

    .line 4
    :goto_1
    iget-object v0, p0, Lk0/yr$e;->a:Lk0/yr;

    invoke-static {v0}, Lk0/yr;->d3(Lk0/yr;)V

    return-void
.end method
