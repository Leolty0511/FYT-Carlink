.class public Lplugins/DabDev$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugins/DabDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lplugins/DabDev;


# direct methods
.method public constructor <init>(Lplugins/DabDev;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/DabDev$a;->b:Lplugins/DabDev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lplugins/DabDev$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    sget v0, Lu0/b;->a0:I

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lplugins/DabDev$a;->a:I

    if-eq v2, v0, :cond_2

    .line 3
    iput v0, p0, Lplugins/DabDev$a;->a:I

    const/4 v2, 0x3

    if-ne v0, v1, :cond_1

    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0xd4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xd3
    .end array-data
.end method
