.class public Lk0/w4$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w4;


# direct methods
.method public constructor <init>(Lk0/w4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w4$l;->a:Lk0/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lk0/w4;->n0:I

    sget v1, Lu0/b;->o:I

    if-eq v0, v1, :cond_2

    .line 3
    sput v1, Lk0/w4;->n0:I

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget v0, Lk0/w4;->n0:I

    sget v1, Lu0/b;->o:I

    if-eq v0, v1, :cond_2

    .line 6
    sput v1, Lk0/w4;->n0:I

    if-nez v1, :cond_2

    .line 7
    sget v0, Lu0/b;->G:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lu0/d;->F(I)V

    :cond_2
    :goto_1
    return-void
.end method
