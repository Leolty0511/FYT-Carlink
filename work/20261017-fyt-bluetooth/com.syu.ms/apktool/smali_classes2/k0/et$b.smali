.class public Lk0/et$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/et;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/et;


# direct methods
.method public constructor <init>(Lk0/et;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/et$b;->a:Lk0/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sget v1, Lu0/b;->K3:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x41

    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    return-void
.end method
