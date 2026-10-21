.class public Lk0/rr$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rr;


# direct methods
.method public constructor <init>(Lk0/rr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rr$b;->a:Lk0/rr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/rr$b;->a:Lk0/rr;

    iget v1, v0, Lk0/rr;->h:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/rr;->h:I

    .line 3
    :cond_0
    iget v0, v0, Lk0/rr;->h:I

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lk0/rr;->a3()V

    :cond_1
    return-void
.end method
