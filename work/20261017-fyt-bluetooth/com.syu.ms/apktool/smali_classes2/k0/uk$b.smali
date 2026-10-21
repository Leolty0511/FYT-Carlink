.class public Lk0/uk$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/uk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/uk;


# direct methods
.method public constructor <init>(Lk0/uk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/uk$b;->a:Lk0/uk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lk0/uk;->a3()V

    return-void
.end method
