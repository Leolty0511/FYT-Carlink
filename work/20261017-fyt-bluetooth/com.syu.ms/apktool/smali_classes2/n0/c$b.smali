.class public Ln0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c;


# direct methods
.method public constructor <init>(Ln0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c$b;->a:Ln0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x3

    .line 3
    aput v2, v0, v1

    const/16 v1, 0xa

    .line 4
    aput v1, v0, v3

    const/4 v1, 0x6

    .line 5
    aput v3, v0, v1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Ly0/f;->x0:[I

    const/4 v3, 0x7

    aput v3, v0, v1

    .line 7
    aput v2, v0, v2

    :goto_0
    return-void
.end method
