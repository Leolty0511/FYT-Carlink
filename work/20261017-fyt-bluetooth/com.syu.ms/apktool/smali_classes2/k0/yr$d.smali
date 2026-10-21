.class public Lk0/yr$d;
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
    iput-object p1, p0, Lk0/yr$d;->a:Lk0/yr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/yr$d;->a:Lk0/yr;

    iget v1, v0, Lk0/yr;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk0/yr;->A:I

    .line 2
    iget v1, v0, Lk0/yr;->X:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {v0}, Lk0/yr;->d3(Lk0/yr;)V

    .line 4
    iget-object v0, p0, Lk0/yr$d;->a:Lk0/yr;

    iget v1, v0, Lk0/yr;->A:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/yr;->A:I

    :cond_0
    return-void
.end method
