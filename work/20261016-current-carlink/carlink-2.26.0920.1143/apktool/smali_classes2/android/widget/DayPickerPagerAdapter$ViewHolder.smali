.class Landroid/widget/DayPickerPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final calendar:Landroid/widget/SimpleMonthView;

.field public final container:Landroid/view/View;

.field public final position:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 9
    .line 10
    return-void
.end method
