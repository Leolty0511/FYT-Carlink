.class public Lk0/i0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/i0;


# direct methods
.method public constructor <init>(Lk0/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/i0$m;->a:Lk0/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lh0/c;->P:I

    div-int/lit16 v0, v0, 0x3e8

    .line 2
    iget-object v1, p0, Lk0/i0$m;->a:Lk0/i0;

    iget v2, v1, Lk0/i0;->w:I

    if-eq v2, v0, :cond_0

    .line 3
    iput v0, v1, Lk0/i0;->w:I

    const/16 v2, 0xa

    .line 4
    invoke-static {v1, v2, v0}, Lk0/i0;->h3(Lk0/i0;II)V

    :cond_0
    return-void
.end method
