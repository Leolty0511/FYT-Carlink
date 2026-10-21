.class public Lk0/pc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pc;


# direct methods
.method public constructor <init>(Lk0/pc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pc$b;->a:Lk0/pc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/pc$b;->a:Lk0/pc;

    iget v1, v0, Lk0/pc;->i:I

    sget v2, Lu0/b;->o:I

    if-eq v1, v2, :cond_0

    .line 2
    iput v2, v0, Lk0/pc;->i:I

    :cond_0
    return-void
.end method
