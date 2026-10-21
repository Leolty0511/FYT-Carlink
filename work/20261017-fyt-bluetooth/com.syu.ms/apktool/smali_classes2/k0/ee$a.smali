.class public Lk0/ee$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ee;


# direct methods
.method public constructor <init>(Lk0/ee;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ee$a;->a:Lk0/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Ll0/c0;->t()V

    :cond_0
    return-void
.end method
