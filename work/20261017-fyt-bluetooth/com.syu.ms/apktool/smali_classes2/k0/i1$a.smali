.class public Lk0/i1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget v0, Lk0/i1;->j:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    sput v0, Lk0/i1;->j:I

    .line 3
    invoke-static {}, Lk0/i1;->c3()V

    .line 4
    :cond_0
    sget v0, Lk0/i1;->j:I

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lk0/i1;->a3()V

    :cond_1
    return-void
.end method
