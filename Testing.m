function varargout = Testing(varargin)
% TESTING MATLAB code for Testing.fig
%      TESTING, by itself, creates a new TESTING or raises the existing
%      singleton*.
%
%      H = TESTING returns the handle to a new TESTING or the handle to
%      the existing singleton*.
%
%      TESTING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTING.M with the given input arguments.
%
%      TESTING('Property','Value',...) creates a new TESTING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Testing_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Testing_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Testing

% Last Modified by GUIDE v2.5 03-Dec-2018 15:19:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Testing_OpeningFcn, ...
                   'gui_OutputFcn',  @Testing_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Testing is made visible.
function Testing_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Testing (see VARARGIN)

% Choose default command line output for Testing
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Testing wait for user response (see UIRESUME)
% uiwait(handles.figure1);

status = checkSDStatus(); % Returns SDStatus as a string

set(handles.SDStatus,'String',status);


% --- Outputs from this function are returned to the command line.
function varargout = Testing_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in GetDataButton.
function GetDataButton_Callback(hObject, eventdata, handles)
% hObject    handle to GetDataButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    data = [1 5 1];
    time = [0.1 0.2 0.3];
    plot(handles.DataDisplay,time,data);
    



% --- Executes on button press in ClearSDButton.
function ClearSDButton_Callback(hObject, eventdata, handles)
% hObject    handle to ClearSDButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function SDStatus = checkSDStatus()
    % Gets Status of SD Card
    %   Status 1 = No Data
    %   Status 2 = Data is present on SD but already and up to date in matlab
    %   Status 3 = Data is present on SD and not up to date in matlab
    if 0
        SDStatus = 'No Data on Card';
    elseif 0
        SDStatus = 'Data is Out of Date';
    elseif 0
        SDStatus = 'Data is Up to Date, and Still on Card';
    else
        SDStatus = 'No SD Card Present';
    end


% --------------------------------------------------------------------
function TimeSeries_Callback(hObject, eventdata, handles)
% hObject    handle to TimeSeries (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.TimeSeriesPanel,'Visible',false);
    set(handles.SeverityPanel,'Visible',false);
    set(handles.InformationPanel,'Visible',false);
    set(handles.TimeSeriesPanel,'Visible',true);


% --------------------------------------------------------------------
function Severity_Callback(hObject, eventdata, handles)
% hObject    handle to SeverityPanel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.SeverityPanel,'Visible',false);
    set(handles.TimeSeriesPanel,'Visible',false);
    set(handles.InformationPanel,'Visible',false);
    set(handles.SeverityPanel,'Visible',true);


% --------------------------------------------------------------------
function Details_Callback(hObject, eventdata, handles)
% hObject    handle to Details (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.InformationPanel,'Visible',false);
    set(handles.SeverityPanel,'Visible',false);
    set(handles.TimeSeriesPanel,'Visible',false);
    set(handles.InformationPanel,'Visible',true);
