.class Landroid/widget/Filter$RequestArguments;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestArguments"
.end annotation


# instance fields
.field public constraint:Ljava/lang/CharSequence;

.field public listener:Landroid/widget/Filter$FilterListener;

.field public results:Landroid/widget/Filter$FilterResults;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Filter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/widget/Filter$RequestArguments;-><init>()V

    return-void
.end method
