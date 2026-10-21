.class public abstract Landroid/view/ViewOutlineProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BACKGROUND:Landroid/view/ViewOutlineProvider;

.field public static final BOUNDS:Landroid/view/ViewOutlineProvider;

.field public static final PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewOutlineProvider$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    .line 7
    .line 8
    new-instance v0, Landroid/view/ViewOutlineProvider$2;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    .line 14
    .line 15
    new-instance v0, Landroid/view/ViewOutlineProvider$3;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroid/view/ViewOutlineProvider;->PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
.end method
